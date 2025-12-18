import "trix/dist/trix.css";
import "trix/dist/trix.esm.js";

function initTrixEditors() {
  document.addEventListener("trix-file-accept", event => {
    event.preventDefault();
  });
  document
    .querySelectorAll('[data-trix-button-group="file-tools"]')
    .forEach(node => node.remove());

  document
    .querySelectorAll(".editor-simple .trix-button-group--block-tools")
    .forEach(node => node.remove());
}

document
  .getElementById("submit-remedy-form")
  ?.addEventListener("click", event => {
    document.getElementById("remedy-form").submit();
  });

initTrixEditors();
