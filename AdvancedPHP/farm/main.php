<?php
    require_once 'farm.php';

    $farm = new Farm();
    $farm->add_animal_type('cow', 2);
    $farm->add_animal_type('chicken', 4);
    $farm->get_total_number_of_animals();
    $farm->collection(7);
    $farm->get_production();
    $farm->add_animal_type('cow', 5);
    $farm->add_animal_type('chicken', 1);
    $farm->get_total_number_of_animals();
    $farm->collection(7);
    $farm->get_production();
