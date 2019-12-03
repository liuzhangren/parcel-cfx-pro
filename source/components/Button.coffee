import React, { useState } from 'react'
import CFX from '../cfx'
import {
  Button
} from 'antd'


C = CFX {
  Button
}

export default (props) =>
  [loading, setLoading] = useState(false)
  { content, rest... } = props
  click = () => 
    onClick()
    setLoading(true)
    setTimeout () => 
      setLoading(false)
    , 3000

  C.Button {
    onClick: click
    rest...
    loading: loading
  }
  , content