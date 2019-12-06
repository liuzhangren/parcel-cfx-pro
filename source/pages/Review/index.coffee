import React, { useState, useEffect } from 'react'
import CFX from '../../cfx'
import {
  Card
  Table
} from 'antd'
import columns from './utils/columns'
import { init } from './service'
C = CFX {
  Card
  Table
  'div'
  'a'
}

export default (props) => 
  [
    dataSource
    setDataSource
  ] = useState []


  useEffect () => 
    (
      () =>
        setDataSource(await init())
    )()
    return 
  , []

  C.Card 
    title: '认证审核'
  ,
    C.Table {
      dataSource
      columns
    }