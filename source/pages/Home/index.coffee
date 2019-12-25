import React from 'react'
import ReactDom from 'react-dom'
import CFX from '../../cfx'
import Button from '../../components/Button'

C = CFX {
  'div'
  Button
}

export default =>
  click = () =>
    console.log 'hello world!!!'
  C.div {
    style.firstDiv...
  }
  , 'hello world!!!'
  ,
    C.div {
      style.secondDiv...
    }
    , 'hello cfx!!!'
    ,
      C.Button {
        type: 'primary'
        onClick: click
        content: 'click'
      }
