import React, { useState } from 'react'
import CFX from '../cfx'
import {
  Layout
  Menu
  Breadcrumb
  Icon
} from 'antd'
import style from './style'

{ Header, Footer, Sider, Content } = Layout
{ SubMenu } = Menu
MItem = (args...) =>
  React.createElement.apply null
  , [
    Menu.Item
    args...
  ]
BItem = (args...) =>
  React.createElement.apply null
  , [
    Breadcrumb.Item
    args...
  ]

C = CFX {
  BItem
  Footer
  Breadcrumb
  Content
  Header
  SubMenu
  Icon
  Menu
  MItem
  Layout
  Sider
  'div'
  'span'
}

export default (props) =>
  [collapsed, setCollapsed] = useState(false)

  onCollapse = (nowCollapsed) ->
    setCollapsed(nowCollapsed)
  
  jumpTo = (href) => () => 
    props.history.push href
    # props.history.push { pathname: href }

  C.Layout {
    style:
      minHeight: '100vh'
      color:  'red'
  }
  ,
    C.Sider {
      collapsible: true
      collapsed
      onCollapse
    }
    ,
      C.div {
        style.logo...
      }
      C.Menu {
        theme: 'dark'
        defaultSelectedKeys: ['1']
        mode: 'inline'
      }
      ,
        MItem {
          onClick: jumpTo('/usermanagement')
          key: '1'
        }
        ,
          C.Icon {
            type: 'user'
          }
          C.span {}
          , '用户管理'
        C.SubMenu {
          key: 'sub1'
          title:
            C.span {}
            ,
              C.Icon {
                type: 'file-search'
              }
              C.span {}
              , '审核管理'
        }
        ,
          MItem {
            key: '3'
            onClick: jumpTo('/review')
          }
          , '认证审核'
          MItem {
            key: '4'
          }
          , '投诉审核'
        MItem {
          onClick: jumpTo('/propertie')
          key: '6'
        }
        ,
          C.Icon {
            type: 'bank'
          }
          C.span {}
          , '楼盘管理'
        MItem {
          onClick: jumpTo('/flowmanagement')
          key: '7'
        }
        ,
          C.Icon {
            type: 'cloud-server'
          }
          C.span {}
          , '流水管理'
        MItem {
          onClick: jumpTo('/workingflow')
          key: '8'
        }
        ,
          C.Icon {
            type: 'rise'
          }
          C.span {}
          , '工作流'
    C.Layout {}
    ,
      C.Header {
        style:
          background: '#fff'
          padding: '0'
      }
      C.Content {
        style:
          margin: '0 16px'
      }
      ,
        C.Breadcrumb {
          style:
            margin: '16px 0'
        }
        ,
          BItem {}
          , 'User'
          BItem {}
          , 'Bill'
        C.div {
          style:
            padding: 24
            background: '#fff'
            minHeight: 360
        }
        , 
          props.content
      C.Footer {
        style:
          textAlign: 'center'
      }
      , 'EstateAgency ©2019 Created by COTFEA UED'
        






        





