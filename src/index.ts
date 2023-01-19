import express, { Express, Request, Response } from 'express'
import cors from 'cors'
// import request from 'request'

const app: Express = express()
const PORT = 3000

app.use(express.urlencoded({ extended: true }))
app.use(express.json())
app.use(cors())

app.get('/', (req: Request, res: Response): void => {
  console.log(req.query)

  res.json({ message: 'response' })
})

app.listen(PORT, (): void => {
  console.log(`🚀 Server listening on ${PORT}`)
})
