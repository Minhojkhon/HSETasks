<?php

    require_once 'chicken.php';
    require_once 'cow.php';
    class Animals
    {
        public const AVAILABLE_ANIMALS = ['cow' => ['milk', 'Cow'], 'chicken' => ['egg', 'Chicken']]; // animal_name => [product, class_name]

        protected $animal_count;
        protected $production;

        public function __construct()
        {
            $this->animal_count = ['cow' => 0, 'chicken' => 0];
            $this->production = ['cow' => 0, 'chicken' => 0];
        }

        public function collector($class, $name, $quan)
        {
            while ($quan--) {
                $class = new $class();
                $this->production[$name] += $class->product;
            }
        }
    }