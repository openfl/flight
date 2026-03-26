import { defineConfig } from "vite";
import path from 'path';
import limePlugin from "../../scripts/vite-plugin-lime";

export default defineConfig({
  plugins: [limePlugin()],
  resolve: {
    alias: {
      '@flighthq/flight': path.resolve(__dirname, '../../packages/upstream/packages/api/flight')
    }
  },
  build: {
    outDir: "bin/html5/bin"
  }
});