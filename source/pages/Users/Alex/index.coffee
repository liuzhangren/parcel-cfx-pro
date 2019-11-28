import React from 'react'
import ReactDom from 'react-dom'
import { Input } from 'antd'
import CFX from '../../../cfx'

C = CFX {
  'div'
  'p'
  Input
}

export default  =>
  C.div {}
  ,
    C.p {}
    , 'this si Alex'
    C.Input {
      placeholder: 'Basic usage'
    }