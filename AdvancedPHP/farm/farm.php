<?php
    require_once 'animals.php';
    class Farm extends Animals
    {
        public function add_animal_type($type, $quan)
        {
            if($quan > 0)
                $this->animal_count[$type] += $quan;
        }

        public function get_total_number_of_animals()
        {
            foreach ($this->animal_count as $animal => $value) {
                echo $animal . ' quantity: ' . $value . PHP_EOL;
            }
        }

        public function collection()
        {
            foreach (Animals::AVAILABLE_ANIMALS as $animal => $info) {
                $this->collector($info[1], $animal, $this->animal_count[$animal]);
            }
        }

        public function get_production()
        {
            foreach (Animals::AVAILABLE_ANIMALS as $animal => $info) {
                echo $info[0] . ' quantity: ' . $this->production[$animal] . PHP_EOL;
            }
        }
    }