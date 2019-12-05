import React, { useState, useEffect } from 'react'
import CFX from '../../cfx'
import {
  Card
  Table
  Tabs
} from 'antd'
{ TabPane } = Tabs

C = CFX {
  Card
  Table
  Tabs
  TabPane
  'div'
}

export default (props) => 
  [
    dataSource
    setDataSource 
  ] = useState()

  callback = () =>


  C.Card
    title: '流水列表'
  ,
    C.Tabs
      defaultActiveKey: '1'
      onChange: callback
    ,
      C.TabPane
        tab: '信用分流水'
        key: '1'
      ,
        C.div {}
        , '信用分'
      
      C.TabPane
        tab: '豆豆流水'
        key: '2'
      ,
        C.div {}
        , '豆豆'