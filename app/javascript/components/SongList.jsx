// app/javascript/components/SongList.js
import React, { useEffect, useState } from 'react';
import axios from 'axios';

const SongList = () => {
  const [songs, setSongs] = useState([]);

  useEffect(() => {
    const fetchSongs = async () => {
      const response = await axios.get('/api/songs'); // Adjust API endpoint as needed
      setSongs(response.data);
    };
    fetchSongs();
  }, []);

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
