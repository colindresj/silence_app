function Person(){
  this.hasLotion = false;
  this.isLotioned = true;
}

Person.prototype.take = function(lotion) {
  this.hasLotion = true;
};


Person.prototype.applyLotion = function(lotion) {
  lotion.squeeze();
  this.isLotioned = true;
};
