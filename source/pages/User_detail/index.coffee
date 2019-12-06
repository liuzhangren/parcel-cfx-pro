import CFX from '../../cfx'
import React, {useState, useEffect} from 'react'
import axios from 'axios'
import { Descriptions, Table, Card } from 'antd'
import config from '../../config'

Descriptions_Item = Descriptions.Item
C = CFX {
  'div'
  'br'
  'p'
  Card
  Table
  Descriptions
  Descriptions_Item
}

export default (props) =>
  console.log props.history.location.pathname.slice(11)
  [dataSource, setDataSource] = useState []
  useEffect () =>
    fetchData = () =>
      result = await axios.get "#{config.api_service}/user#{props.history.location.pathname.slice(11)}"
      console.log result.data
      setDataSource(result.data)
    fetchData()
    return
  , []

  columns = [
    {
      title: '姓名'
      dataIndex: 'realName'
      key: 'name'
      # text => <a>{text}</a>,
      width: 150
      align: 'center'
    },
    {
      title: '性别'
      dataIndex: 'sex'
      key: 'nickName'
      # text => <a>{text}</a>,
      width: 150
      align: 'center'
    },
    {
      title: '年龄'
      dataIndex: 'age'
      key: 'address 2'
      ellipsis: true
      align: 'center'
    },
    {
      title: '需求描述'
      dataIndex: 'properties'
      key: 'address 3'
      ellipsis: true
      align: 'center'
    },
    {
      title: '佣金要求'
      dataIndex: 'address'
      key: 'address 4'
      ellipsis: true
      align: 'center'
    },
    {
      title: '手机号'
      dataIndex: 'tel'
      key: 'address 1'
      ellipsis: true
      align: 'center'
    },
    {
      title: '微信二维码'
      dataIndex: 'creditScore'
      key: 'address 6'
      ellipsis: true
      align: 'center'
    }
  ]
  C.div {
    style:
      backgroundColor: '#f0f2f5'
      padding: '24px'
  }
  ,
    C.Card {
    }
    ,
      C.Descriptions
        title:'用户基本信息'
        bordered: 'true'
        column: '{ xxl: 4, xl: 3, lg: 3, md: 3, sm: 2, xs: 1 }'     
      ,
        C.Descriptions_Item 
          label:'用户ID'
        , "#{dataSource.id}"
        C.Descriptions_Item 
          label:'昵称'
        , "#{dataSource.nickName}"
        C.Descriptions_Item 
          label:'姓名'
        , "#{dataSource.realName}"
        C.Descriptions_Item 
          label:'性别'
        , "#{if dataSource.gender==1 then '男' else '女'}"
        C.Descriptions_Item 
          label:'手机号'
        , "#{if dataSource.tel!= null then 'dataSource.tel' else '——'}"
        C.Descriptions_Item 
          label:'会员等级'
        , '金牌讲师'
        C.Descriptions_Item 
          label:'所属楼盘'
        , '爱情公寓'
        C.Descriptions_Item 
          label:'年龄'
        , '38'
        C.Descriptions_Item 
          label:'推荐人'
        , 'Cloud Database'
        C.Descriptions_Item 
          label:'豆豆数量'
        , '99'
        C.Descriptions_Item 
          label:'综合信用分'
        , '100'
        C.Descriptions_Item 
          label:'微信二维码'
        , '2323232'
        C.Descriptions_Item 
          label:'推/接单信用分'
        , '2323232'
        C.Descriptions_Item 
          label:'接单能力分'
        , '接单率、到访率、认购率、反佣数目'
    data=[]
    C.br {}
    C.Card 
      style:
        marginBottom:'24px'
    ,
      C.p 
        style:
          display: 'block'
          marginBottom: '20px'
          color: 'rgba(0, 0, 0, 0.85)'
          fontWeight: 'bold'
          fontSize: '16px'
          lineHeight: '1.5'
      
      , '客户基本信息'
      C.Table {
        columns
        dataSource:data
      }
    C.Card {}
    ,
      C.Descriptions 
        title:'用户认证信息'
        bordered: 'true'
        column: '{ xxl: 4, xl: 3, lg: 3, md: 3, sm: 2, xs: 1 }'
      ,
        C.Descriptions_Item 
          label:'用户头像'
        , 'Cloud Database'
        C.Descriptions_Item 
          label:'从业经验'
        , 'Prepaid'
        C.Descriptions_Item 
          label:'所属公司'
        , '嘻嘻卡'
        C.Descriptions_Item 
          label:'曾服务项目'
        , '男'
        C.Descriptions_Item 
          label:'工装照'
        , '（手拿名片工装照或者以项目为背景工装照）'



