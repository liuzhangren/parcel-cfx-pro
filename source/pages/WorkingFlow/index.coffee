import React, {useState, useEffect} from 'react'
import CFX from '../../cfx'
import axios from 'axios'
import Logic from './Logic'
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
        setDataSource(await Logic.init())
    )()
    return 
  , []
  
  columns = [
      title: '工作流单号'
      dataIndex: 'id'
      key:'id1'
      align: 'center'
    ,
      title: '推单人'
      dataIndex: 'pushOrderNickName'
      key: 'pushOrderNickName2'
      align: 'center'
    ,
      title: '接单人'
      dataIndex: 'acceptOrderNickName'
      key: 'acceptOrderNickName3'
      align: 'center'
    ,
      title: '工作流状态'
      dataIndex: 'status'
      key: 'status4'
      align: 'center'
    ,
      title: '更新时间'
      dataIndex: 'updateAt'
      key: 'updateAt5'
      align: 'center'
    ,
      title: '发起时间'
      dataIndex: 'createdAt'
      key: 'createdAt6'
      align: 'center'
  ]
  C.Card {
    title: '工作流'
  }
  ,
    C.Table {
      columns
      dataSource
    }