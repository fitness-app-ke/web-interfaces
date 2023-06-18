//import logo from './logo.svg';
//import './App.css';

//function App() {
  //return (
    //<div className="App">
      //<header className="App-header">
        //<img src={logo} className="App-logo" alt="logo" />
       // <p>
          //Edit <code>src/App.js</code> and save to reload.
        //</p>
        //<a
          //className="App-link"
          //href="https://reactjs.org"
          //target="_blank"
          //rel="noopener noreferrer"
        //>
         // Learn React
        //</a>
     // </header>
    //</div>
 // );
//}

//export default App;

import * as React from 'react'; // import React components
import { CssVarsProvider } from '@mui/joy/styles'; // import CSS styles
import Sheet from '@mui/joy/Sheet'; // import the Sheet resource

export default function App() { // entry point of React application
	return (
		<CssVarsProvider>
			<Sheet
				sx={{
					width: 300,
						mx: 'auto', // margin left & right
						my: 4, // margin top & bottom
						py: 3, // padding top & bottom
						px: 2, // padding left & right
						display: 'flex',
						flexDirection: 'column',
						gap: 2,
						borderRadius: 'sm',
						boxShadow: 'md',
				}}
				>
				Hello! Future leader
			</Sheet>
		</CssVarsProvider>
	);
}
