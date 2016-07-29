/**
* In this file, we create a React component
* which incorporates components provided by Material-UI.
*/
import React, {Component} from 'react';
// import RaisedButton from 'material-ui/RaisedButton';
// import Dialog from 'material-ui/Dialog';
import {deepOrange500} from 'material-ui/styles/colors';
// import FlatButton from 'material-ui/FlatButton';
import getMuiTheme from 'material-ui/styles/getMuiTheme';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import AppBar from 'material-ui/AppBar';
import {Table, TableBody, TableHeader, TableHeaderColumn, TableRow, TableRowColumn} from 'material-ui/Table';
import {Card, CardActions, CardHeader, CardText} from 'material-ui/Card';

const styles = {
  container: {
    // textAlign: 'center',
    paddingTop: 0,
    float: 'left', position: 'relative', display: 'inline', width: '80%'
  },
};

const muiTheme = getMuiTheme({
  palette: {
    accent1Color: deepOrange500,
  },
});

class Main extends Component {
  constructor(props, context) {
    super(props, context);
    this.state = {
    };
  }

  render() {
    const data = [{id: 1, name: 'Pikachu', type: 'eletric', color: 'yellow'},
    {id: 2, name: 'Squirtle', type: 'water', color: 'blue'},
    {id: 3, name: 'Bulbasaur', type: 'grass', color: 'green'},
    {id: 4, name: 'Charmander', type: 'fire', color: 'red'},
    {id: 5, name: 'Pidgey', type: 'flying', color: 'brown'},
    {id: 6, name: 'Dragonite', type: 'dragon', color: 'orange'},
  ]
  return (
    <MuiThemeProvider muiTheme={muiTheme}>
      <div style={styles.container}>
        <AppBar
          title="Title"
          showMenuIconButton={false}
          style={{ background: '#3F51B5'}}
          />
        <Card style={{margin: 16}}>
          <CardHeader title='List' titleStyle={{fontSize: 25}}/>
          <CardText>
            <Table>
              <TableHeader
                displaySelectAll={false}
                adjustForCheckbox={false}>
                <TableRow>
                  <TableHeaderColumn>ID</TableHeaderColumn>
                  <TableHeaderColumn>Name</TableHeaderColumn>
                  <TableHeaderColumn>Type</TableHeaderColumn>
                  <TableHeaderColumn>Color</TableHeaderColumn>
                </TableRow>
              </TableHeader>
              <TableBody displayRowCheckbox={false}>
                {data.map(pokemon => {
                  return(
                    <TableRow>
                      <TableRowColumn>{pokemon.id}</TableRowColumn>
                      <TableRowColumn>{pokemon.name}</TableRowColumn>
                      <TableRowColumn>{pokemon.type}</TableRowColumn>
                      <TableRowColumn style={{color: pokemon.color, fontWeight: 'bold'}}>{pokemon.color}</TableRowColumn>
                    </TableRow>
                  )
                })}
              </TableBody>
            </Table>
          </CardText>
        </Card>

      </div>
    </MuiThemeProvider>
  );
}
}

export default Main;
