import React, { useState, useEffect } from 'react'
import CFX from '../../cfx'
import {
  Card
  Table
  Tabs
} from 'antd'
import { 
  douDouScoreColumns
  creditScoreColumns 
} from './utils/columns'
import {
  creditScoreDataSource 
  douDouDataSource
} from './utils/dataSource'

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

  callback = (key) =>
    console.log key

  renderContentOfCreditScore = () =>
    C.Table {
      columns: creditScoreColumns
      dataSource: creditScoreDataSource
    }
  renderContentOfDouDouScore = () =>
    C.Table {
      columns: douDouScoreColumns
      dataSource: douDouDataSource
    }
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
        renderContentOfCreditScore()
      
      C.TabPane
        tab: '豆豆流水'
        key: '2'
      ,
        renderContentOfDouDouScore()