// cubing/search does not expose its worker entry as a package export.
// Importing the inside API directly lets Vite bundle the worker correctly.
import "./node_modules/cubing/dist/lib/cubing/chunks/inside-JAJOK2MI.js";
globalThis.postMessage("comlink-exposed");
