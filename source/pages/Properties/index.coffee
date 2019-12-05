import React, {useState, useEffect} from 'react'
import ReactDom from 'react-dom'
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
      result = await axios.get "#{config.api_service}/propertie"
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
      title: '楼盘名称',
      dataIndex: 'name',
      key: 'name',
      width: 150,
      align: 'center'
    },
    {
      title: '行政区',
      dataIndex: 'country',
      key: 'nickName',
      width: 150,
      align: 'center'
    },
    {
      title: '地址',
      dataIndex: 'address',
      key: 'address 1',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '参考价',
      dataIndex: 'price',
      key: 'address 2',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '开盘时间',
      dataIndex: 'startTime',
      key: 'address 3',
      ellipsis: true,
      align: 'center'
    },
    {
      title: '楼盘特色',
      dataIndex: 'propertiesType',
      key: 'address 4',
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
          onClick: jumpTo "/propertiedetail/#{row.id}"
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
