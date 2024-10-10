import React from 'react';

const SongList = () => {
  // Static sample data for testing
  const songs = [
    { id: 1, title: "Song One", artist: "Artist A" },
    { id: 2, title: "Song Two", artist: "Artist B" },
  ];

  return (
    <div>
      <h1>Songs</h1>
      <ul>
        {songs.map(song => (
          <li key={song.id}>
            {song.title} by {song.artist}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default SongList;
