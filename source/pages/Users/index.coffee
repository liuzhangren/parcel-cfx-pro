import React, {useState, useEffect} from 'react'
import ReactDom from 'react-dom'
import style from './style'
import CFX from '../../cfx'
import axios from 'axios'
import config from '../../config'
import { 
  Table 
} from 'antd'

C = CFX {
  'a'
  'div'
  'a'
  Table
}


export default (props) =>
  [dataSource, setDataSource] = useState []
  
  useEffect () =>
    fetchData = () =>
      result = await axios.get "#{config.api_service}/user"
      setDataSource(result.data.data)
    fetchData()
    return
  , []
  
  [collapsed, setCollapsed] = useState(false)

  onCollapse = (nowCollapsed) ->
    setCollapsed(nowCollapsed)

  jumpTo = (href) => () => 
    props.history.push href
    
  columns = [
    {
      title: '姓名',
      dataIndex: 'realName',
      key: 'name',
      width: 150,
      align: 'center'
    },
    {
      title: '昵称',
      dataIndex: 'nickName',
      key: 'nickName',
      width: 150,
      align: 'center'
    },
    {
      title: '手机号',
      dataIndex: 'tel',
      key: 'address 1',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '会员等级',
      dataIndex: 'level',
      key: 'address 2',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '所属楼盘',
      dataIndex: 'properties',
      key: 'address 3',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '区域',
      dataIndex: 'address',
      key: 'address 4',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '豆豆数量',
      dataIndex: 'douDouAmount',
      key: 'address 5',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '综合信用分',
      dataIndex: 'creditScore',
      key: 'address 6',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '操作',
      key: 'operation'
      render: (value, row, index) =>
        console.log row
        C.a
          key: index
          onClick: jumpTo "/userdetail/#{row.id}"
        , '详情'
    }
  ]
  C.div {}
  ,
      # <Search
      #   placeholder="请输入想要搜索的用户"
      #   enterButton="Search"
      #   size="large"
      # />
      C.Table {
        columns
        dataSource
      }
      # ,
      # props.content
