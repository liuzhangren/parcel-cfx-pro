import CFX from '../../cfx'
import React, {useState, useEffect} from 'react'
import axios from 'axios'
import { Table, Card } from 'antd'
import config from '../../config'

C = CFX {
  'div'
  'a'
  Card
  Table
}

export default (props) =>
  [dataPropertie, setDataSource] = useState []
  path = props.history.location.pathname.slice(16)
  useEffect () =>
    fetchData = () =>
      result = await axios.get "#{config.api_service}/propertie#{path}"
      setDataSource([result.data])
    fetchData()
    return
  , []

  [collapsed, setCollapsed] = useState(false)

  onCollapse = (nowCollapsed) ->
    setCollapsed(nowCollapsed)

  jumpTo = (href) => () => 
    props.history.push href
  propertiedetail = [
      title:'楼盘照片'
      dataIndex:'imgId'
      key:'1'
      ellipsis: true
      align:'center'
    ,
      title:'建筑类型'
      dataIndex:'buildingType'
      ellipsis: true
      key:'2'
      align:'center'
    ,
      title:'装修标准'
      dataIndex:'decoration'
      ellipsis: true
      key:'3'
      align:'center'
    ,
      title:'产权年限'
      dataIndex:'propertyYears'
      ellipsis: true
      key:'4'
      align:'center'
    ,
      title:'开发商'
      dataIndex:'developer'
      ellipsis: true
      key:'5'
      align:'center'
    ,    
      title:'建筑面积'
      dataIndex:'constructionArea'
      ellipsis: true
      key:'6'
      align:'center'
    ,    
      title:'总户数'
      dataIndex:'totalHouses'
      ellipsis: true
      key:'7'
      align:'center'
    ,    
      title:'绿化率'
      dataIndex:'greeningRate'
      ellipsis: true
      key:'8'
      align:'center'
    ,    
      title:'容积率'
      dataIndex:'volumeRate'
      ellipsis: true
      key:'9'
      align:'center'
    ,        
      title:'物业公司'
      dataIndex:'propertyCompony'
      ellipsis: true
      key:'10'
      align:'center'
    ,   
      title:'车位数'
      dataIndex:'carSeats'
      ellipsis: true
      key:'11'
      align:'center'
    ,    
      title:'车位比'
      dataIndex:'carRate'
      key:'12'
      align:'center'
  ]
  
  dataUser = [
    {}
  ]
  userdetail = [
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
        C.a
          key: index
          onClick: jumpTo "/userdetail/ck3pwsuw90001mimq2pukpr1l"
        , '详情'
    }
  ]

  C.div 
    style:
      backgroundColor: '#f0f2f5'
      padding: '24px'
  ,
    C.Card
      title:'楼盘信息'
    ,
      C.Table {
        columns: propertiedetail
        dataSource: dataPropertie
      }
    C.Card
      title: '置业顾问'
      style:
        marginTop:'24px'
    ,
      C.Table {
        columns: userdetail
        dataSource: dataUser
      }
