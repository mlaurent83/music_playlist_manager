import React from 'react';
import { createRoot } from 'react-dom/client'; // Use the correct import for React 18
import SongList from './components/SongList'; // Make sure the path is correct

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('react-songs-list');
  if (node) {
    const root = createRoot(node);
    root.render(<SongList />); // Render the SongList component
  }
});
