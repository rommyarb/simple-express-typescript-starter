import express, { Request, Response } from 'express'
const app = express()
app.use(express.json())

app.get('/', (req: Request, res: Response) => {
  console.log('params:', req.params)
  console.log('query:', req.query)
  res.send('🌏 Hello world!')
})

app.get('/people', (req: Request, res: Response) => {
  res.json([
    { id: 1, name: 'Rommy' },
    { id: 2, name: 'Ayu' },
    { id: 3, name: 'Adam' },
    { id: 4, name: 'Dio' },
  ])
})

app.post('/send', (req: Request, res: Response) => {
  const { text } = req.body
  res.json({ success: true, message: `Message sent. [${text}]` })
})

const PORT = 3000
app.listen(PORT, () => {
  return console.log(
    `Simple Express Typescript is listening at http://localhost:${PORT}`
  )
})
