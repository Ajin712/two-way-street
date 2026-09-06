import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "./index.css";
import PhotoJournalApp from "./PhotoJournalApp";

createRoot(document.getElementById("root")).render(
  <StrictMode>
    <PhotoJournalApp />
  </StrictMode>
);
