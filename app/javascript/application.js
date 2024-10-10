import React from 'react';
import { createRoot } from 'react-dom/client'; // Make sure this is imported
import SongList from './components/SongList'; // Adjust this path if necessary

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('react-songs-list');
  if (node) {
    const root = createRoot(node); // Create a root for React to render into
    root.render(<SongList />); // Render the SongList component
  }
});
