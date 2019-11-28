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
Item = Menu.Item
BItem = Breadcrumb.Item

C = CFX {
  BItem
  Footer
  Breadcrumb
  Content
  Header
  SubMenu
  Icon
  Menu
  Item
  Layout
  Sider
  'div'
  'span'
}

export default (props) =>
  console.log props
  [collapsed, setCollapsed] = useState(false)

  onCollapse = (nowCollapsed) ->
    setCollapsed(nowCollapsed)
  
  jumpTo = (href) => () =>
    props.history.push href
    console.log history

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
        C.Item {
          onClick: jumpTo('/')
          key: '1'
        }
        ,
          C.Icon {
            type: 'pie-chart'
          }
          C.span {}
          , 'Option 1'
        C.Item {
          onClick: jumpTo('/about')
          key: '2'
        }
        ,
          C.Icon {
            type: 'desktop'
          }
          C.span {}
          , 'Option 2'
        C.SubMenu {
          key: 'sub1'
          title:
            C.span {}
            ,
              C.Icon {
                type: 'user'
              }
              C.span {}
              , 'User'
        }
        ,
          C.Item {
            onClick: jumpTo('users/tom')
            key: '3'
          }
          , 'Tom'
          C.Item {
            onClick: jumpTo('users/bill')
            key: '4'
          }
          , 'Bill'
          C.Item {
            onClick: jumpTo('users/alex')
            key: '5'
          }
          , 'Alex'
        C.SubMenu {
          key: 'sub2'
          title:
            C.span {}
            ,
              C.Icon {
                type: 'team'
              }
              C.span {}
              , 'Team'
        }
        ,
          C.Item {
            key: '6'
          }
          , 'Team 1'
          C.Item {
            key: '8'
          }
          , 'Team 2'
        C.Item {
          key: '9'
        }
        ,
          C.Icon {
            type: 'file'
          }
          C.span {}
          , 'File'
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
          C.BItem {}
          , 'User'
          C.BItem {}
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
        






        





