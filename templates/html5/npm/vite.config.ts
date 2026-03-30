import { defineConfig } from "vite";
import path from "path";

export default defineConfig({
  resolve: {
    alias: {
      "@flighthq/flight": path.resolve(
        __dirname,
        "::LIB_FLIGHT_PATH::/packages/upstream/packages/api/flight",
      ),
    },
  },
});
