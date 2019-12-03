import React, {useState, useEffect} from 'react'
import { Link } from 'react-router-dom'
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

export default  =>
  [data, setData] = useState( [] )
  useEffect () =>
    fetchData = () =>
      result = await axios.get "http://192.168.31.18:3001/user"
      setData(result.data.data)
    fetchData()
  , []
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
# { Search } = Input
columns = [
  {
    title: '姓名',
    dataIndex: 'name',
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
    title: '年龄',
    dataIndex: 'age',
    key: 'age',
    width: 80,
    align: 'center'
  },
  {
    title: '手机号',
    dataIndex: 'telNumb',
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
    dataIndex: 'beanNumb',
    key: 'address 5',
    ellipsis: true,
    align: 'center'
  },
  {
    title: '综合信用分',
    dataIndex: 'grade',
    key: 'address 6',
    ellipsis: true,
    align: 'center'
  },
  {
    title: '操作',
    key: 'operation'
    render: () =>
      <Link>详情</Link>
  }
];

data = [
  {
    key: '1',
    name: 'John Brown',
    nickName: 'hahaha'
    age: 32,
    telNumb: 213213213123,
    level: '普通会员',
    properties: 'balibalibalibali',
    address: 'New York No. 1 Lake Park, New York No. 1 Lake Park',
    beanNumb: 99,
    grade: 100
  },
  {
    key: '2',
    name: 'Jim Green',
    age: 42,
    address: 'London No. 2 Lake Park, London No. 2 Lake Park',
    tags: ['loser'],
  },
  {
    key: '3',
    name: 'Joe Black',
    age: 32,
    address: 'Sidney No. 1 Lake Park, Sidney No. 1 Lake Park',
    tags: ['cool', 'teacher'],
  },
  {
    key: '4'
  },
  {
    key: '5'
  },  
  {
    key: '6'
  },
  {
    key: '7'
  },  
  {
    key: '8'
  },
  {
    key: '9'
  },  
  {
    key: '10'
  },
  {
    key: '11'
  },  
  {
    key: '12'
  },
  {
    key: '13'
  },  
  {
    key: '14'
  },
  {
    key: '15'
  },  
  {
    key: '16'
  },
  {
    key: '17'
  },  
  {
    key: '18'
  },
  {
    key: '19'
  },  
  {
    key: '20'
  },
  {
    key: '21'
  },
];