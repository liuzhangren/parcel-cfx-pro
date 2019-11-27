import React from 'react'
import ReactDom from 'react-dom'
import { InputNumber } from 'antd';

export default  =>
  onChange = (value) -> console.log('changed', value)
  <div>
    <InputNumber min={1} max={10} defaultValue={3} onChange={onChange}/>
    this is Bill
  </div>