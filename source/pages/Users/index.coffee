import React, {useState, useEffect} from 'react'
import ReactDom from 'react-dom'
import style from './style'
import CFX from '../../cfx'
import axios from 'axios'
import { 
  Table
  Input 
} from 'antd'

C = CFX {
  'div'
  Table
}

export default(props) =>
  [data, setData] = useState( [] )
  useEffect () =>
    fetchData = () =>
      result = await axios.get "http://192.168.31.18:3001/user"
      setData(result.data.data)
    fetchData()
  , []
  console.log data
  
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
      # text => <a>{text}</a>,
      width: 150,
      align: 'center'
    },
    {
      title: '昵称',
      dataIndex: 'nickName',
      key: 'nickName',
      # text => <a>{text}</a>,
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
      render: () =>
        <a onClick={jumpTo('/user_detail')} >详情</a>
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
        dataSource: data
      }
      ,
        props.content