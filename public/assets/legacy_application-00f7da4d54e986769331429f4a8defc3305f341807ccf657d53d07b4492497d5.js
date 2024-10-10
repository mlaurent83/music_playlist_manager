// app/assets/javascripts/application.js
import React from 'react';
import ReactDOM from 'react-dom';
import SongList from './components/SongList'; // Ensure this path is correct

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('react-songs-list');
  if (node) {
    ReactDOM.render(<SongList />, node);
  }
});
