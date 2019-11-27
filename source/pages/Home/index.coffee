import React from 'react'
import ReactDom from 'react-dom'
import CFX from '../../cfx'
import style from './style'
import {
  Button
} from 'antd'

C = CFX {
  'div'
  Button
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
    ,
      C.Button {
        type: 'primary'
      }
      , 'click'
