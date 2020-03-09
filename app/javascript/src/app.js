import "trix/dist/trix.css";
import "trix/dist/trix.js";

function trixRemoveAttachment() {
  document.addEventListener("trix-file-accept", event => {
    event.preventDefault();
  });
  document
    .querySelectorAll('[data-trix-button-group="file-tools"]')
    .forEach(node => node.remove());
}

trixRemoveAttachment();
