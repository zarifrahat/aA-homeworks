import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = {result:0, num1:"", num2:""}
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  //your code here

  setNum1(e) {
    let num1;
    if(e.target.value !== ""){
      num1 = parseInt(num1 = e.target.value);
    }
    this.setState({num1});
  }

  setNum2(e) {
    let num2;
    if (e.target.value !== "") {
      num2 = parseInt(num2 = e.target.value);
    }
    this.setState({ num2 });
  }


  add(e) {
    e.preventDefault();
    let result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }

  subtract(e) {
    e.preventDefault();
    let result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multiply(e) {
    e.preventDefault();
    let result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  divide(e) {
    e.preventDefault();
    let result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  clear(e) {
    e.preventDefault();
    this.setState({result:0, num1:"", num2:""});
  }


  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
      </div>
    );
  }
}

export default Calculator;
