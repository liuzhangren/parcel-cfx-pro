import React from 'react'
import ReactDom from 'react-dom'
import style from './style'
import CFX from '../../cfx'

C = CFX {
  'div'
}

export default  =>
  C.div {
    style.aboutTitle...
  }
  , 'this is FilePage'