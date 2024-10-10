// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import React from 'react';
import ReactDOM from 'react-dom';
import SongList from '../components/SongList'; // Adjust path if necessary

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('react-songs-list');
  if (node) {
    ReactDOM.render(<SongList />, node);
  }
});
