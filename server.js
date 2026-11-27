const express = require('express');
const app = express();
app.use(express.json());

app.get('/api/v1/health', (req, res) => res.json({ status: 'ok' }));
app.get('/api/v1/flights/:flightNumber', (req, res) => {
  res.json({ flight: req.params.flightNumber, gate: 'B14', status: 'ON_TIME' });
});
app.post('/api/v1/bookings/search', (req, res) => {
  res.json({ query: req.body, results: [] });
});

app.listen(8080, () => console.log('Flight ops API running on 8080'));
