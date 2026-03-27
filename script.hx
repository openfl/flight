package;

import hxp.*;
import sys.io.File;
import sys.FileSystem;
import haxe.Json;
import haxe.io.Path;
import haxe.Http;

class Script extends hxp.Script
{
	public function new()
	{
		super();

		if (command == "default") command = "init";

		try
		{
			switch (command)
			{
				case "assets":
					assetsCommand(commandArgs);
				case "build":
					buildCommand(commandArgs);
				case "init":
					initCommand(commandArgs);
				case "test":
					testCommand(commandArgs);
				default:
					Log.error('Unknown command: "$command"');
			}
		}
		catch (e)
		{
			Log.error('Error: $e');
			Sys.exit(1);
		}
	}

	private function assetsCommand(args:Array<String>):Void
	{
		Log.info("Downloading example assets");
		var cwd = Sys.getCwd();

		// Allow override via args: hxp assets path1 path2
		var projects:Array<String>;

		if (args.length > 0)
		{
			projects = args;
		}
		else
		{
			projects = [
				Path.join([cwd, "examples/bunnymark"]),
				Path.join([cwd, "examples/displayingabitmap"])
			];
		}

		for (dir in projects)
		{
			processProject(dir);
		}

		Log.info("All assets processed ✔");
	}

	private function buildCommand(args:Array<String>):Void
	{
		var cwd = Sys.getCwd();
		var project = args.length > 0 ? args[0] : "upstream";

		switch (project)
		{
			case "upstream":
				Log.info("Building upstream project");
				var upstream = Path.combine(cwd, "packages/upstream");
				System.runCommand(upstream, "npm", ["install"]);
				System.runCommand(upstream, "npm", ["run", "build"]);
			default:
				var example = Path.combine(Path.combine(cwd, "examples"), project);
				if (!FileSystem.exists(example))
				{
					Log.error("Cannot find example \"" + args[0] + "\"");
				}
				runOpenFLCommand(example, ["build", "html5"]);
		}
	}

	private function downloadAssets(assets:Array<Asset>, targetDir:String):Void
	{
		for (asset in assets)
		{
			var outPath = Path.join([targetDir, asset.path]);
			if (FileSystem.exists(outPath))
			{
				Log.info('✔ Cached: ${asset.path}');
				continue;
			}
			downloadFile(asset.url, outPath);
		}
		Log.info('Assets ready ✔');
	}

	private function downloadFile(remotePath:String, localPath:String = ""):Void
	{
		if (localPath == "")
		{
			localPath = Path.withoutDirectory(remotePath);
		}

		Log.println("Downloading " + remotePath + " -> " + localPath + "...");

		fetchToFile(remotePath, localPath);
	}

	private function fetchToFile(url:String, outPath:String):Void
	{
		var dir = Path.directory(outPath);
		if (dir != "" && !FileSystem.exists(dir)) FileSystem.createDirectory(dir);

		var out = File.write(outPath, true);
		var http = new Http(url);
		http.cnxTimeout = 30;

		http.onError = function(err)
		{
			out.close();
			if (FileSystem.exists(outPath)) FileSystem.deleteFile(outPath);
			throw 'Download failed: $url -> $err';
		};

		http.customRequest(false, out);

		// Handle redirect (basic)
		if (http.responseHeaders != null && http.responseHeaders.exists("Location"))
		{
			var redirect = http.responseHeaders.get("Location");
			if (redirect != url) fetchToFile(redirect, outPath);
		}
	}

	private function initCommand(args:Array<String>):Void
	{
		Log.info("Initializing project");
		buildCommand(["upstream"]);
		assetsCommand([]);
	}

	private function mkdirRecursive(dir:String):Void
	{
		if (dir == null || dir == "" || FileSystem.exists(dir)) return;
		mkdirRecursive(Path.directory(dir));
		FileSystem.createDirectory(dir);
	}

	private function processProject(dir:String):Void
	{
		var manifestPath = Path.join([dir, "assets.manifest.json"]);

		if (!FileSystem.exists(manifestPath))
		{
			Log.warn('No manifest found in: $dir');
			return;
		}

		Log.info('Processing: $dir');

		var manifest:Dynamic = Json.parse(File.getContent(manifestPath));
		var assets:Array<Asset> = cast manifest.assets;

		var targetDir = Path.join([dir, "public/assets"]);
		downloadAssets(assets, targetDir);
	}

	private function runOpenFLCommand(directory:String, args:Array<String>):Void
	{
		if (Log.verbose) args.push("-verbose");

		for (flag in flags.keys())
		{
			args.push("-" + flag);
		}

		for (define in defines.keys())
		{
			if (defines.get(define) != "")
			{
				args.push("-D" + define + "=" + defines.get(define));
			}
			else
			{
				args.push("-D" + define);
			}
		}

		System.runCommand(directory, "openfl", args);
	}

	private function testCommand(args:Array<String>):Void
	{
		if (args.length == 0)
		{
			Log.error("You must specify a project to test");
		}

		var cwd = Sys.getCwd();
		var project = args.length > 0 ? args[0] : null;
		var example = Path.combine(Path.combine(cwd, "examples"), args[0]);
		if (!FileSystem.exists(example))
		{
			Log.error("Cannot find example \"" + args[0] + "\"");
		}
		runOpenFLCommand(example, ["test", "html5"]);
	}
}

typedef Asset =
{
	var url:String;
	var path:String;
}
