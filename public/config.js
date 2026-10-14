const isLocalDevelopment = ["localhost", "127.0.0.1"].includes(window.location.hostname);

window.RAND_NOTE_CONFIG = {
  apiBaseUrl: isLocalDevelopment ? "http://localhost:8787" : "https://note.random6.xyz"
};
