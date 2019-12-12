import React, { useState, useEffect } from 'react'
import CFX from '../../cfx'
import axios from 'axios'
import service from './service'
import columns from './utils/columns'

import {
  Card
  Table
} from 'antd'

C = CFX {
  Card
  Table
}

export default (props) =>
  [dataSource, setDataSource] = useState []
  
  useEffect () =>
    (
      () => 
        setDataSource(await service.init())
    )()
    return 
  , []
  
  C.Card {
    title: '工作流'
  }
  ,
    C.Table {
      columns
      dataSource
    }