import React from 'react';

const SongList = () => {
  // Static sample data for testing
  const songs = [
    { id: 1, title: "Song One", artist: "Artist A" },
    { id: 2, title: "Song Two", artist: "Artist B" },
  ];

  console.log("Songs array:", songs); // Log the songs array

  return (
    <div>
      <h1>Songs</h1>
      <ul>
        <li>Static Song One</li>
        <li>Static Song Two</li>
      </ul>

    </div>
  );
};

export default SongList;
