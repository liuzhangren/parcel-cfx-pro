import "babel-polyfill"
import Pages from './pages'
import Layout from './Layout'
import React from 'react'
import ReactDOM from 'react-dom'
import 'antd/dist/antd.css'
import { createBrowserHistory } from 'history'
import CFX from './cfx'
import {
  Router
  Switch
  Route
  Link
} from "react-router"

history = createBrowserHistory()
{ 
  LoginPage
  UsersPage
  UserDetailPage
  WorkingFlowPage 
  FlowManagementPage
  ReviewPage
  PropertiePage
  PropertieDetailPage
} = Pages

C = CFX {
  UserDetailPage
  LoginPage
  Layout
  Router
  Switch
  Route
  UsersPage
  WorkingFlowPage
  PropertiePage
  PropertieDetailPage
  FlowManagementPage
  ReviewPage
  PropertieDetailPage
  "div"
}

export default App = () =>
  if history.location.pathname is '/login'
  then C.LoginPage {}
  else
    C.Layout {
      history
      content: 
        C.Router {
          history
        }
        ,
          C.div {
          }
          ,
            C.Switch {}
            ,
              C.Route
                exact: true
                path: '/usermanagement'
              ,
                C.UsersPage {
                  history
                }
              C.Route
                exact: true
                path: '/userdetail/:id'
              ,
                C.UserDetailPage {
                  history
                }
              C.Route 
                path: '/review'
              ,
                C.ReviewPage {
                  history
                }
              C.Route
                path: '/propertie'
              ,
                C.PropertiePage {
                  history
                }
              C.Route
                exact: true
                path: '/propertiedetail/:id'
              ,
                C.PropertieDetailPage {
                  history
                }

                
              C.Route 
                path: '/workingflow'
              ,
                C.WorkingFlowPage {
                  history
                }
              C.Route 
                path: '/flowmanagement'
              ,
                C.FlowManagementPage {
                  history
                }

    }
      
  


ReactDOM.render <App />, document.getElementById "app"