import React from 'react'
import ReactDom from 'react-dom'
import CFX from '../../cfx'
import style from './style'

C = CFX {
  'div'
}

export default =>
  C.div {
    style.firstDiv...
  }
  , 'hello world!!!'
  ,
    C.div {
      style.secondDiv...
    }
    , 'hello cfx!!!'
