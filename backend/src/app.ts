import express, { Request, Response } from 'express';
import serverless from 'serverless-http';

const app = express();

app.get('/', (req: Request, res: Response) => {
  res.json({ message: 'Hello Lambda with TypeScript!' });
});

export default app;
export const handler = serverless(app, 
    { basePath: '/default' }
);
