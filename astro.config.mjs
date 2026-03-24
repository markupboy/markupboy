// @ts-check
import { defineConfig } from "astro/config";

// https://astro.build/config
export default defineConfig({
  build: {
    format: "directory",
  },
  redirects: {
    "/dotfiles.sh": {
      status: 301,
      destination: "https://raw.githubusercontent.com/markupboy/dotfiles/main/script/remote.sh",
    },
  },
});
