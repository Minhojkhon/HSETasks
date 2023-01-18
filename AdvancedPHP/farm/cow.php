<?php
    require_once 'animal.php';

    class Cow extends Animal
    {
        public function __construct()
        {
            $this->id = md5(rand());
            $this->product = rand(8, 12);
        }
    }