<?php
    require_once 'animal.php';

    class Chicken extends Animal
    {
        public function __construct()
        {
            $this->id = md5(rand());
            $this->product = rand(0, 1);
        }
    }