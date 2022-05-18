import express from "express";
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

// 익명함수 사용
app.get('/a.html', function (req, res) {
  res.send('Hi')
})

// body 안의 구문이 하나라면 중괄호{} 생략가능
app.get('/b.html', (req, res) => res.send('ByeBye'))

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})