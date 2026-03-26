import { defineConfig } from "vite";
import path from 'path';
import openflPlugin from "vite-plugin-openfl";

export default defineConfig({
  plugins: [openflPlugin()],
  resolve: {
    alias: {
      '@flighthq/flight': path.resolve(__dirname, '../../packages/upstream/packages/api/flight')
    }
  }
});