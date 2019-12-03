import Pages from './pages'
import Layout from './Layout'
import React from 'react'
import ReactDOM from 'react-dom'
import 'antd/dist/antd.css'
import { createBrowserHistory } from 'history'
import {
  Router
  Switch
  Route
  Link
  Redirect
} from "react-router"

history = createBrowserHistory()
{ LoginPage, UsersPage } = Pages

export default App = () =>
  if history.location.pathname is '/login'
    return <LoginPage />
  else
    return <Layout history={history} content={
      <Router history={history}>
        <div>
          <Switch>
            <Route path='/user_management'>
              <UsersPage />
            </Route>
            # <Redirect exact from='/' to='/user_management' />
          </Switch>
        </div>
      </Router>
    } />
      
  


ReactDOM.render <App />, document.getElementById "app"