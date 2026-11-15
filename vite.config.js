import { defineConfig } from 'vite';

export default defineConfig({
  // Let Vite process cubing.js worker entry points rather than importing
  // the package directly from a browser CDN.
  optimizeDeps: {
    exclude: ['cubing']
  },
  worker: {
    format: 'es'
  },
  build: {
    target: 'es2022'
  }
});
