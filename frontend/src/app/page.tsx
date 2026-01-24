'use client'

import { useEffect, useState } from 'react';

export default function Home() {
  const [message, setMessage] = useState('');
  const backendUrl = process.env.NEXT_PUBLIC_BACKEND_URL;

  useEffect(() => {
    fetch(`${backendUrl}/`)
      .then(res => res.json())
      .then(data => setMessage(data.message))
      .catch(err => setMessage('Error fetching backend'));
  }, [backendUrl]);

  return (
    <div>
      <h1>Next.js Frontend</h1>
      <p>Message from backend: {message || 'Loading...'}</p>
    </div>
  );
}
