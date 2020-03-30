After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,"_").tr('/','_').tr('(','').tr(')','').tr('#','')

    if scenario.failed?
        print_tela(scenario_name.downcase!,'falhou')
    else
        print_tela(scenario_name.downcase!, 'passou')
    end
end