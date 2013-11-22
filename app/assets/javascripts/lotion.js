function Lotion(){
  this.ounces = 32;
}

Lotion.prototype.squeeze = function() {
  this.ounces--;
};
