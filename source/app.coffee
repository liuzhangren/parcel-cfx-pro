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
} from "react-router"

history = createBrowserHistory()
{ HomePage, AboutPage } = Pages

export default App = () => 
  <Layout history={history} content={
    <Router history={history}>
      <div>
        <Switch>
          <Route path="/about">
            <AboutPage />
          </Route>
          <Route exact path="/">
            <HomePage />
          </Route>
        </Switch>
      </div>
    </Router>
  } />


ReactDOM.render <App />, document.getElementById "app"