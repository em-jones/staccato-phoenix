import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'
const outDir = "../priv/static";
const assetDir = "assets";
export default defineConfig(({mode}) => ({
  plugins: [svelte()],
  root: 'bun',
  publicDir: "public",
  build: {
    outDir,
    watch: mode === "development" ? {
      include: 'bun/**'
    } : undefined,
    clearScreen: false,
    emptyOutDir: false,
    manifest: false,
    assetDir,
    minify: mode === "production",
    sourceMap: mode === "development",
    rollupOptions: {
      watch: {
        include: "bun/**"
      },
      input: {
        app: "./bun/index.ts"
      },
      output: {
        manualChunks: id => {
          if (id == "svelte") {
            return "svelte";
          }
        },
        entryFileNames: `${assetDir}/[name].js`,
        chunkFileNames: `${assetDir}/[name].js`,
        assetFileNames: `${assetDir}/[name][extname]`,
      }
    }
  }
}));
