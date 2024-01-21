import { useEffect, useState } from "react";

export default function App() {

  const [advice, setAdvice] = useState("");
  const [adviceCount, setAdviceCount] = useState(0);

  async function getAdvice() {
    const res = await fetch('https://api.adviceslip.com/advice');
    const data = await res.json();
    setAdvice(data.slip.advice);
    setAdviceCount((c) => c + 1);
  }

  useEffect(function() {
    getAdvice();
  }, [])

  return (   
      <div>
        <h1>{advice}</h1>
        <button onClick={getAdvice}>Get Advice</button>
        <Message count={adviceCount} />
      </div>
    
  )
}

function Message(props) {
    return (
      <p>
        You have read <b>{props.count}</b> pieces of advice
      </p>
    )
}