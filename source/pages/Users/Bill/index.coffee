import React from 'react'
import ReactDom from 'react-dom'
import CFX from '../../../cfx'
import { InputNumber } from 'antd';

C = CFX {
  'div'
  InputNumber
}

export default  =>
  onChange = (value) -> console.log('changed', value)

  C.div {}
  ,
    C.InputNumber {
      min: 1
      max: 10
      defaultValue: 3
      onChange
    }
    'this is Bill'